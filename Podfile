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

