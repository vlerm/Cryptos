//
//  CryptoViewController.swift
//  CryptoRate
//
//  Created by Вадим Лавор on 22.03.22.
//

import UIKit

class CryptoViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private var viewModels = [CryptoViewModel]()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        API.shared.getAllCryptoData { [weak self] result in
            switch result {
            case .success(let models):
                let emptyData = Utilities.emptyData
                self?.viewModels = models.compactMap({ CryptoViewModel(name: $0.name ?? emptyData, symbol: $0.symbol ?? emptyData, price: $0.price ?? emptyData, status: $0.status ?? emptyData, priceDate: Utilities.convertToCorrectFormat(date: $0.price_date ?? emptyData), priceTimestamp: Utilities.convertToCorrectFormat(date: $0.price_timestamp ?? emptyData), circulatingSupply: $0.circulating_supply ?? emptyData, maxSupply: $0.max_supply ?? emptyData, marketCap: $0.market_cap ?? emptyData, marketCapDominance: $0.market_cap_dominance ?? emptyData, numExchanges: $0.num_exchanges ?? emptyData, numPairs: $0.num_pairs ?? emptyData, numPairsUnmapped: $0.num_pairs_unmapped ?? emptyData, firstCandle: Utilities.convertToCorrectFormat(date: $0.first_candle ?? emptyData), firstTrade: Utilities.convertToCorrectFormat(date: $0.first_trade ?? emptyData), firstOrderBook: Utilities.convertToCorrectFormat(date: $0.first_order_book ?? emptyData), rank: $0.rank ?? emptyData, rankDelta: $0.rank_delta ?? emptyData, high: $0.high ?? emptyData, highTimestamp: Utilities.convertToCorrectFormat(date: $0.high_timestamp ?? emptyData))
                })
                DispatchQueue.main.async {
                    self?.tableView.reloadData()
                }
            case .failure(let error):
                print(error)
            }
        }
    }
    
}

extension CryptoViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CryptoTableViewCell.identifier, for: indexPath) as? CryptoTableViewCell else {fatalError()}
        cell.configure(with: viewModels[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let detailViewController = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController {
            let list = viewModels[indexPath.row]
            detailViewController.logo = UIImage(named: "\(list.symbol)") ?? UIImage(systemName: "bitcoinsign.circle")!
            detailViewController.symbol = list.symbol
            detailViewController.name = list.name
            detailViewController.status = list.status
            detailViewController.price = list.price
            detailViewController.priceDate = list.priceDate
            detailViewController.priceTimeStamp = list.priceTimestamp
            detailViewController.circulatingSupply = list.circulatingSupply
            detailViewController.maxSupply = list.maxSupply
            detailViewController.marketCap = list.marketCap
            detailViewController.marketCapDominance = list.marketCapDominance
            detailViewController.numExchanges = list.numExchanges
            detailViewController.numPairs = list.numPairs
            detailViewController.numPairsUnmapped = list.numPairsUnmapped
            detailViewController.firstCandle = list.firstCandle
            detailViewController.firstTrade = list.firstTrade
            detailViewController.firstOrderBook = list.firstOrderBook
            detailViewController.rank = list.rank
            detailViewController.rankDelta = list.rankDelta
            detailViewController.high = list.high
            detailViewController.highTimestamp = list.highTimestamp
            self.navigationController?.pushViewController(detailViewController, animated: true)
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150.0
    }
    
}
