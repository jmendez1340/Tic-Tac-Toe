//
//  ViewController.swift
//  Tick Tack Toe
//
//  Created by Jason on 2/5/17.
//  Copyright © 2017 Jason Mendez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var TicTacToe = 1 // cross
    var table = [0,0,0,0,0,0,0,0,0]
    
    let WaysToWin = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8]]
    var GameOn = true
    
    
    @IBAction func ButtonAction(_ sender: UIButton)
    {
        if (table[sender.tag-1]==0)
        {
            if (TicTacToe == 1)
            {
                sender.setImage(UIImage(named:"X.png"), for: UIControlState())
            }
            else
            {
                sender.setImage(UIImage(named:"O.png"), for: UIControlState())
            }
            }
        }
    
    

    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        for combination in WaysToWin
        {
            if table[combination[0]] != 0 && table[combination[0]] == table[combination[1]] && table[combination[1]] == table[combination[2]]
            {
                GameOn = false
                if table[combination[0]] == 1
                {
                    // X has won
                    print ("X")
                }
                else
                {
                    //O has won
                    print ("O");
                }
            }
        }
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

