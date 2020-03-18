# Podfile - adding multiple targets 

Adding multiple targets in a Podfile.

#### Objective: 

In this app we added an ```import Firebase``` statement in the ```DBUser``` model. This ```import Firebase``` statement caused our test class to fail compilation. In order to resolve this compiler error we updated the ```Podfile``` to include two targets, the project target and the test target. 

# Podfile 

```ruby 
# Uncomment the next line to define a global platform for your project
platform :ios, '13.0'

# The Podfile is written in Ruby (language)

# this is needs to run third party libraries
# such as Firebse
use_frameworks!

# create a function in Ruby
# have the default pods for the project
def project_pods
  pod 'Firebase/Auth'
  pod 'Firebase/Firestore'
  #pod 'Kingfisher'
end

# Project currently has two targets
# Project target - Xcode -> new project
# Unit test target

target 'Podfile-Mulitple-Targets' do
  # call the project_pods function
  project_pods
end

target 'Podfile-Mulitple-TargetsTests' do
  # call the project_pods function
  project_pods
end
```

# DBUser model 

```swift 
import Foundation
import Firebase

struct DBUser {
  var name = "Alex"
}

extension DBUser {
  // computed property
  var getAuthUser: User? {
    guard let user = Auth.auth().currentUser else { return nil }
    return user
  }
}
```

# XCTestCase subclass 

```swift 
import XCTest
@testable import Podfile_Mulitple_Targets

class Podfile_Mulitple_TargetsTests: XCTestCase {

  func testDBUser() {
    // arrange
    let expectedName = "Alex"
    
    // act
    // sut - system under test
    let user = DBUser() // creates a DBUser instance
    let sut = user.name
    
    // assert
    XCTAssertEqual(sut, expectedName)
  }
}

```
