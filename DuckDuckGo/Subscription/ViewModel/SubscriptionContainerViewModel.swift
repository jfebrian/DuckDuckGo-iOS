//
//  SubscriptionContainerViewModel.swift
//  DuckDuckGo
//
//  Copyright © 2024 DuckDuckGo. All rights reserved.
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
import Combine

#if SUBSCRIPTION
@available(iOS 15.0, *)
final class SubscriptionContainerViewModel: ObservableObject {
    
    let userScript: SubscriptionPagesUserScript
    let subFeature: SubscriptionPagesUseSubscriptionFeature
    
    let flow: SubscriptionFlowViewModel
    let restore: SubscriptionRestoreViewModel
    let email: SubscriptionEmailViewModel
    
    
    init(userScript: SubscriptionPagesUserScript = SubscriptionPagesUserScript(),
         subFeature: SubscriptionPagesUseSubscriptionFeature = SubscriptionPagesUseSubscriptionFeature()) {
        self.userScript = userScript
        self.subFeature = subFeature
        self.flow = SubscriptionFlowViewModel(userScript: userScript, subFeature: subFeature)
        self.restore = SubscriptionRestoreViewModel(userScript: userScript, subFeature: subFeature)
        self.email = SubscriptionEmailViewModel(userScript: userScript, subFeature: subFeature)
    }
    
    deinit {
        subFeature.cleanup()
    }
}
#endif