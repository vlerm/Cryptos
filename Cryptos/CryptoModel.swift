//
//  CryptoModel.swift
//  CryptoModel
//
//  Created by Вадим Лавор on 22.03.22.
//

import Foundation

struct CryptoModel: Codable {
    
    let id: String?
    let currency: String?
    let symbol: String?
    let name: String?
    let status: String?
    let price: String?
    let price_date: String?
    let price_timestamp: String?
    let circulating_supply: String?
    let max_supply: String?
    let market_cap: String?
    let market_cap_dominance: String?
    let num_exchanges: String?
    let num_pairs: String?
    let num_pairs_unmapped: String?
    let first_candle: String?
    let first_trade: String?
    let first_order_book: String?
    let rank: String?
    let rank_delta: String?
    let high: String?
    let high_timestamp: String?
    
}
