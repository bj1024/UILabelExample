//
// Copyright (c) 2019, mycompany All rights reserved. 
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var lblLine1: UILabelRounded!
  @IBOutlet weak var lblLine0: UILabelRounded!

  @IBOutlet weak var lblTopHCenterLine1: UILabelRounded!
  @IBOutlet weak var lblTopHCenterLine0: UILabelRounded!

  @IBOutlet weak var lblBottomHCenterLine1: UILabelRounded!
  @IBOutlet weak var lblBottomHCenterLine0: UILabelRounded!

  @IBOutlet weak var lblTopLeadingLine1: UILabelRounded!
  @IBOutlet weak var lblTopLeadingLine0: UILabelRounded!

  @IBOutlet weak var lblTopTrailingLine1: UILabelRounded!
  @IBOutlet weak var lblTopTrailingLine0: UILabelRounded!

  
  var curTextLines:Int = 0
  let texts:[String] = [
    "Lorem ipsum dolor sit amet",
    "consectetur adipiscing elit",
    "sed do eiusmod tempor",
    "incididunt ut labore et dolore magna aliqua",
    "Ut enim ad minim veniam",
  ]

  var label1Str:String = "" {
    didSet{
      lblLine1.text  = label1Str
      lblTopHCenterLine1.text  = label1Str
      lblBottomHCenterLine1.text  = label1Str
      lblTopLeadingLine1.text  = label1Str
      lblTopTrailingLine1.text  = label1Str
    }
  }

  var label0Str:String = "" {
    didSet{
      lblLine0.text  = label0Str
      lblTopHCenterLine0.text  = label0Str
      lblBottomHCenterLine0.text  = label0Str
      lblTopLeadingLine0.text  = label0Str
      lblTopTrailingLine0.text  = label0Str
    }
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    setLabel()
  }
  @IBAction func onTapTest(_ sender: Any) {
    setLabel()
  }


  func  setLabel(){

    label1Str = texts[curTextLines]
    label0Str = texts[0...curTextLines].joined(separator:"\n")


    curTextLines += 1
    if curTextLines >= texts.count {
      curTextLines = 0
    }

  }

}

