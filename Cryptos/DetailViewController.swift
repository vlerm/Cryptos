//
//  DetailViewController.swift
//  CryptoRate
//
//  Created by Вадим Лавор on 24.03.22.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var symbolLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var priceDateLabel: UILabel!
    @IBOutlet weak var priceTimeStampLabel: UILabel!
    @IBOutlet weak var circulatingSupplyLabel: UILabel!
    @IBOutlet weak var maxSupplyLabel: UILabel!
    @IBOutlet weak var marketCapLabel: UILabel!
    @IBOutlet weak var marketCapDominanceLabel: UILabel!
    @IBOutlet weak var numExchangesLabel: UILabel!
    @IBOutlet weak var numPairsLabel: UILabel!
    @IBOutlet weak var numPairsUmmappedLabel: UILabel!
    @IBOutlet weak var firstCandleLabel: UILabel!
    @IBOutlet weak var firstTradeLabel: UILabel!
    @IBOutlet weak var firstOrderBookLabel: UILabel!
    @IBOutlet weak var rankLabel: UILabel!
    @IBOutlet weak var rankDeltaLabel: UILabel!
    @IBOutlet weak var highLabel: UILabel!
    @IBOutlet weak var highTimestampLabel: UILabel!
    
    var logo = UIImage()
    var name = String()
    var symbol = String()
    var price = String()
    var status = String()
    var priceDate = String()
    var priceTimeStamp = String()
    var circulatingSupply = String()
    var maxSupply = String()
    var marketCap = String()
    var marketCapDominance = String()
    var numExchanges = String()
    var numPairs = String()
    var numPairsUnmapped = String()
    var firstCandle = String()
    var firstTrade = String()
    var firstOrderBook = String()
    var rank = String()
    var rankDelta = String()
    var high = String()
    var highTimestamp = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Utilities.setGradientBackground(view: self.view, colorTop: UIColor(red: 210/255, green: 109/255, blue: 180/255, alpha: 1).cgColor, colorBottom: UIColor(red: 52/255, green: 148/255, blue: 230/255, alpha: 1).cgColor)
        logoImageView.image = logo
        nameLabel.text = name
        symbolLabel.text = symbol
        priceLabel.text = price
        statusLabel.text = status
        priceDateLabel.text = priceDate
        priceTimeStampLabel.text = priceTimeStamp
        circulatingSupplyLabel.text = circulatingSupply
        maxSupplyLabel.text = maxSupply
        marketCapLabel.text = marketCap
        marketCapDominanceLabel.text = marketCapDominance
        numExchangesLabel.text = numExchanges
        numPairsLabel.text = numPairs
        numPairsUmmappedLabel.text = numPairsUnmapped
        firstCandleLabel.text = firstCandle
        firstTradeLabel.text = firstTrade
        firstOrderBookLabel.text = firstOrderBook
        rankLabel.text = rank
        rankDeltaLabel.text = rankDelta
        highLabel.text = high
        highTimestampLabel.text = highTimestamp
    }
    
}
