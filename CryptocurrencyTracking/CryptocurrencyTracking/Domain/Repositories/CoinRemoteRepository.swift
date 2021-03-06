//
//  CoinRemoteRepository.swift
//  CryptocurrencyTracking
//
//  Created by Thuận Nguyễn Văn on 31/07/2021.
//

import Foundation
import RxSwift
import RxCocoa

protocol CoinRemoteRepositoryType {
    
    func getAllCoin() -> Observable<[CoinModel]>
    
    func getSearchResults(query: String) -> Observable<[CoinModel]>
    
    func getCoinDetails(uuid: String) -> Observable<CoinDetailsModel>
    
    func getChartData(uuid: String, timePeriod: String) -> Observable<[HistoryModel]>
}

struct CoinRemoteRepository: CoinRemoteRepositoryType {
    
    func getAllCoin() -> Observable<[CoinModel]> {
        return APIServices.shared.getAllCoin()
    }
    
    func getSearchResults(query: String) -> Observable<[CoinModel]> {
        return APIServices.shared.getSearchResults(query: query)
    }
    
    func getCoinDetails(uuid: String) -> Observable<CoinDetailsModel> {
        return APIServices.shared.getCoinDetails(uuid: uuid)
    }
    
    func getChartData(uuid: String, timePeriod: String) -> Observable<[HistoryModel]> {
        return APIServices.shared.getChartData(uuid: uuid, timePeriod: timePeriod)
    }
}
