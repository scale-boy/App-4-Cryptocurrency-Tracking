//
//  HomeUseCase.swift
//  CryptocurrencyTracking
//
//  Created by Thuận Nguyễn Văn on 31/07/2021.
//

import Foundation
import RxCocoa
import RxSwift

protocol HomeUseCaseType {
    
    func getAllCoin() -> Observable<[CoinModel]>
    
    func getSearchResults(query: String) -> Observable<[CoinModel]>
}

struct HomeUseCase: HomeUseCaseType {
    
    let coinRemoteRepository: CoinRemoteRepositoryType
    
    func getAllCoin() -> Observable<[CoinModel]> {
        return coinRemoteRepository.getAllCoin()
    }
    
    func getSearchResults(query: String) -> Observable<[CoinModel]> {
        return coinRemoteRepository.getSearchResults(query: query)
    }
}
