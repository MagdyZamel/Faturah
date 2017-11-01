//
//  ViewController.swift
//  test
//
//  Created by Magdy Zamel on 10/24/17.
//  Copyright © 2017 Fxlab. All rights reserved.
//

import UIKit
import MBProgressHUD

class ViewController: UIViewController,FaturahTransactionManagerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        var transaction = FaturahTransaction()
        transaction.merchantCode = "xxxxxxxxxxxxxxxxxxxxxxxxxxxx1009"
        transaction.secureKey = "c784bdf6-1a06-41ab-8b31-3949752ab1f7"
        transaction.urlScheme = "faturah123"
        //Create Order
        let order = FaturahOrder()
        order.add(
            FaturahOrderItem(
                id: "1",
                andName: "Nokia Mobile",
                andDescription: "Nokia Mobile 6600 Silver Color",
                andQuantity: NSNumber(integerLiteral: 1),
                andPrice: NSNumber(integerLiteral: 10))
        )
        order.orderDeliveryCharge = NSNumber(integerLiteral: 5)
        order.orderCustomerName = "John Doe"
        order.orderCustomerEmail = "email@website.com"
        order.orderCustomerPhone = "0123456789"
        order.orderLanguage = "ar"
        transaction.order = order
        MBProgressHUD.showAdded(to: self.view, animated: true)
        FaturahTransactionManager.shared().prepareTranscation(transaction, with: self)

    }
    func transactionManagerDidFinishTransactionPreparation(_ transaction: FaturahTransaction!, withError error: Error!) {
        MBProgressHUD.hide(for: self.view, animated: true)
        if((error) != nil) {
            NSLog("Error Occured During Transaction Preparation \(error!.localizedDescription)");
        } else {
            FaturahTransactionManager.shared().startPayement(for: transaction, from: self, with: self)
        }

    }
    func transactionManagerDidFinishPayment(with status: FaturahPaymentStatus, andError error: Error!) {
        print(error)
    }

}


