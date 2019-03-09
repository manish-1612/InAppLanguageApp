//
//  NewHome1DataManager.swift
//  TestInAppLanguage
//
//  Created Manish  Kumar on 02/03/19.
//  Copyright © 2019 Manish  Kumar. All rights reserved.
//
//

import UIKit


protocol NewHome1DataManagerProtocol {
    
}

class NewHome1DataManager {
    var datamanagerDelegate: NewHome1DataManagerProtocol?
    var localDataFetch = NewHome1LocalDataManager()
    var serverDataFetch = NewHome1APIDataManager()
    
    init() {}
    
    // Data fetch service methods goes here

}
