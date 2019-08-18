//
//  MrzScanner.swift
//  RNNativeMrzScanner
//
//  Created by Jeancarlos Mancebo on 8/18/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

import Foundation
import PassportScanner
import UIKit

protocol ProcessMRZ {
    func processMRZ(mrz:MRZParser)
}


@objc(MrzScanner)
class MrzScanner : PassportScannerController {
    
    var delegate: ProcessMRZ?
    var _resolve: RCTPromiseResolveBlock!
    var _reject: RCTPromiseRejectBlock!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.debug = true
        self.accuracy = 1
        self.mrzType = .auto
        self.showPostProcessingFilters = true
    }
    
    override func successfulScan(mrz: MRZParser) {
        print("mrz {\(mrz.description)\n}")
        delegate?.processMRZ(mrz: mrz)
        self._resolve(mrz)
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc
    func startScanner(_ resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void{
        self._resolve = resolve
        self._reject = reject
        
        self.startScan()
    }
}


