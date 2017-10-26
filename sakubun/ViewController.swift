//
//  ViewController.swift
//  sakubun
//
//  Created by matsumoto keiji on 2017/06/15.
//  Copyright © 2017年 matsumoto keiji. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

	var speak:AVSpeechSynthesizer = AVSpeechSynthesizer()

	@IBOutlet var tvSentence: UITextView!
	
	//いつ、どこで、誰が、誰と、何をしたを配列で定義する
	let whenArray: [String] = ["遠い遠い昔", "昨日", "１週間前", "１万年前", "ちょうど今", "紀元前234年", "いつか忘れたけど","ついさっき"]
	let whereArray: [String] = ["世界の中心", "月", "大手町", "サハラ砂漠", "太平洋の真ん中", "南極点", "武道館","平壌"]
	let whoArray: [String] = ["ピコ太郎", "草刈正雄", "カワウソ", "デヴィ夫人", "ベッキー", "トランプ大統領", "石油王","ボブ・サップ"]
	let whoArray2: [String] = ["オバマ元大統領", "プーチン", "出川哲朗", "殿様", "加勢大周", "水野美紀", "トム・クルーズ","安倍総理"]
	let doArray: [String] = ["大爆発しました", "鬼を退治しました", "キスをしました", "殴り合いをしました", "幸せに暮らしましたとさ", "駆け落ちしましたとさ", "決闘をしました","しめ鯖に当たりました"]

	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	//作文ボタンを押した時の処理
	@IBAction func tapMakeSentence(_ sender: Any) {
		
		let whenNumber:Int = random(whenArray.count)
		let whereNumber:Int = random(whereArray.count)
		let whoNumber:Int = random(whoArray.count)
		let whoNumber2:Int = random(whoArray2.count)
		let doNumber:Int = random(doArray.count)

        let strSentence:String = String(format:"%@、%@で%@と%@が%@"
			,whenArray[whenNumber],whereArray[whereNumber],whoArray[whoNumber],whoArray2[whoNumber2],doArray[doNumber])

		let content = AVSpeechUtterance(string: strSentence)
		content.voice = AVSpeechSynthesisVoice(language: "ja-JP")
		self.speak.speak(content)

	}

	//乱数を作るファンクション
	func random(_ limit:Int) -> Int {
		return Int(arc4random() % UInt32(limit))
	}
	
}


/*


//いつ、どこで、誰が、誰と、何をしたを配列で定義する
let whenArray: [String] = ["遠い遠い昔", "昨日", "１週間前", "１万年前", "ちょうど今", "紀元前234年", "いつか忘れたけど"]
let whereArray: [String] = ["世界の中心", "月", "大手町", "サハラ砂漠", "太平洋の真ん中", "南極点", "武道館"]
let whoArray: [String] = ["ピコ太郎", "草刈正雄", "カワウソ", "デヴィ夫人", "ベッキー", "トランプ大統領", "石油王"]
let whoArray2: [String] = ["オバマ大統領", "プーチン", "出川哲朗", "殿様", "加勢大周", "水野美紀", "トム・クルーズ"]
let doArray: [String] = ["大爆発しました", "鬼を退治しました", "キスをしました", "殴り合いをしました", "幸せに暮らしました", "駆け落ちしました", "決闘をしました"]


import UIKit
import AVFoundation

class ViewController: UIViewController {

@IBOutlet var tvSentence: UITextView!
var speak:AVSpeechSynthesizer = AVSpeechSynthesizer()

//いつ、どこで、誰が、誰と、何をしたを配列で定義する
let whenArray: [String] = ["遠い遠い昔", "昨日", "１週間前"]
let whereArray: [String] = ["世界の中心", "門前仲町", "大手町"]
let whoArray: [String] = ["ピコ太郎", "草刈正雄", "トランプ大統領"]
let whoArray2: [String] = ["オバマ大統領", "プーチン", "出川哲朗"]
let doArray: [String] = ["大爆発しました", "鬼を退治しました", "キスをしました"]


override func viewDidLoad() {
super.viewDidLoad()
// Do any additional setup after loading the view, typically from a nib.
}

override func didReceiveMemoryWarning() {
super.didReceiveMemoryWarning()
// Dispose of any resources that can be recreated.
}

//作文ボタンを押した時の処理
@IBAction func tapMakeSentence(_ sender: Any) {

let whenNumber:Int = random(3)
let whereNumber:Int = random(3)
let whoNumber:Int = random(3)
let whoNumber2:Int = random(3)
let doNumber:Int = random(3)

let strSentence:String = whenArray[Int(whenNumber)] + "、" + whereArray[whereNumber]
+ "で" + whoArray[whoNumber] + "と" + whoArray2[whoNumber2] + "が" + doArray[doNumber]

tvSentence.text = strSentence

let content = AVSpeechUtterance(string: strSentence)
content.voice = AVSpeechSynthesisVoice(language: "ja-JP")
self.speak.speak(content)

}

//乱数を作るファンクション
func random(_ limit:Int) -> Int {
return Int(arc4random() % UInt32(limit))
}


}



*/
