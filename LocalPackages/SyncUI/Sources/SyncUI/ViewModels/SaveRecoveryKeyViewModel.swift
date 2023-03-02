//
//  SaveRecoveryKeyViewModel.swift
//  DuckDuckGo
//
//  Copyright © 2023 DuckDuckGo. All rights reserved.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import Foundation
import UIKit

public class SaveRecoveryKeyViewModel: ObservableObject {

    let key: String
    let showRecoveryPDFAction: () -> Void

    public init(key: String = "eyJyZWNvdmVyeSI6eyJ1c2ViNjgwRDQ1QjUtNUU2RS00MzQ3jZGQkU4MEZDNEE3IiwicHJpbWFyeV9rZXkiOiJBUBUUVCQVFFQkFRRUJBUUVCBUUVCQVFFPSJ9fQ==",

                showRecoveryPDFAction: @escaping () -> Void) {
        self.key = key
        self.showRecoveryPDFAction = showRecoveryPDFAction
    }

    func copyKey() {
        UIPasteboard.general.string = key
    }

}