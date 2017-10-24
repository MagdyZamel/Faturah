//
//  ViewController.swift
//  test
//
//  Created by Magdy Zamel on 10/24/17.
//  Copyright © 2017 Fxlab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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
                order.add(
                    FaturahOrderItem(
                    id: "1",
                    andName: "Nokia Mobile",
                    andDescription: "Nokia Mobile 6600 Silver Color",
                    andQuantity: 1,
                    andPrice: 10)
                )
                order.add(
                    FaturahOrderItem(
                    id: "1",
                    andName: "Nokia Mobile",
                    andDescription: "Nokia Mobile 6600 Silver Color",
                    andQuantity: 1,
                    andPrice: 10)
                )
        //        andName:@"LG LCD"
        //        andDescription:@"LG LCD 37 Inch Wide"
        //        andQuantity:[NSNumber numberWithInt:1]
        //        andPrice:[NSNumber numberWithInt:10]]];
        //        [order addItem:[FaturahOrderItem itemWithID:@"3"
        //        andName:@"Laptop DELL"
        //        andDescription:@"Laptop DELL Inspiron 5012 Black Color"
        //        andQuantity:[NSNumber numberWithInt:2]
        //        andPrice:[NSNumber numberWithInt:15]]];
        //        [order setOrderDeliveryCharge:[NSNumber numberWithInt:5]];
        //        [order setOrderCustomerName:@"John Doe"];
        //        [order setOrderCustomerEmail:@"email@website.com"];
        //        [order setOrderCustomerPhone:@"0123456789"];
        //        [order setOrderLanguage:@"ar"];
        //
        //        //Set Order
        //        [transaction setOrder:order];
        //
        //        //View Hud
        //        [MBProgressHUD showHUDAddedTo:self.view animated:YES];
        //
        //        //Prepare Transaction
        //        [[FaturahTransactionManager sharedManager] prepareTranscation:transaction
        //        withDelegate:self];

    }


}

