//
//  ViewController.swift
//  Fluent
//
//  Created by Alexander Juda on 20/11/14.
//  Copyright (c) 2014 MacKN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func connectButtonTouched(sender: UIButton) {
        let manager = AFHTTPRequestOperationManager();
//        manager.GET("http://sporthub.alexanderjuda.pl/users.json",
//            parameters: nil,
//            success: { (requestOperation: AFHTTPRequestOperation!, response: AnyObject!) -> Void in
//                
//            }
//        AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
//        [manager GET:@"http://example.com/resources.json" parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
//            NSLog(@"JSON: %@", responseObject);
//        } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
//            NSLog(@"Error: %@", error);
//        }];
        manager.GET("http://1b510586.ngrok.com/",
            parameters: nil,
            success: { (operation: AFHTTPRequestOperation!, response: AnyObject!) -> Void in
                NSLog("Success!")
            },
            failure: { (operation: AFHTTPRequestOperation!, error: NSError!) -> Void in
                NSLog("Failure!")
            })
        
    }
    
    @IBAction func randomizeColorsButtonTouched(sender: UIButton) {
    }

}

