//
//  API.swift
//  CryptoRate
//
//  Created by Вадим Лавор on 22.03.22.
//

import Foundation

class API {
    
    static let shared = API()
    
    public func getAllCryptoData(completion: @escaping (Result<[CryptoModel], Error>) -> Void) {
        guard let url = URL(string: Utilities.assetsStartPoint + Utilities.apiKey + Utilities.assetsEndPoint) else {return}
        let task = URLSession.shared.dataTask(with: url) { data,_, error in
            guard let data = data, error == nil else {return}
            do {
                let jsonData = try JSONDecoder().decode([CryptoModel].self, from: data)
                print(jsonData)
                completion(.success(jsonData))
            } catch {
                completion(.failure(error))
            }}
        task.resume()
    }
    
}
