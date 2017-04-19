//
//  ViewController.swift
//  samplePayUmoney
//
//  Created by MAC on 27/03/17.
//  Copyright © 2017 MAC. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    var webServiceResponse:PayUWebServiceResponse?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnPayUMoney(_ sender: UIButton)
    {
  
        
        let paymentParam = PayUModelPaymentParams()
        paymentParam.amount = "1"
        paymentParam.productInfo = "product info"
        paymentParam.firstName = "test"
        paymentParam.email = "testg.com"
        paymentParam.transactionID = PUSAHelperClass.getTransactionID(withLength: 15)
        paymentParam.key = "xxxxxxxx"
        paymentParam.environment = "Production"
        paymentParam.surl = "https://payu.herokuapp.com/success"
        paymentParam.furl = "https://payu.herokuapp.com/failure"
        let reuqestObj = PayUDontUseThisClass()
        reuqestObj.getPayUHashes(withPaymentParam: paymentParam, merchantSalt: "xxxxxxxx", withCompletionBlock: {allHashes,hashString,errorMessage
            in
            if(errorMessage == "")
            {
                
            }
            
        })
        
        
    }
    func paymentPayUMoney()
    {
      let  respo =  PayUWebServiceResponse()
      webServiceResponse = PayUWebServiceResponse()
      webServiceResponse?.getPayUPaymentRelatedDetail(forMobileSDK: payment, withCompletionBlock: <#T##completionBlockForPayUPaymentRelatedDetail!##completionBlockForPayUPaymentRelatedDetail!##(PayUModelPaymentRelatedDetail?, String?, Any?) -> Void#>)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

