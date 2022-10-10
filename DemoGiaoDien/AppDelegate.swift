//
//  AppDelegate.swift
//  DemoGiaoDien
//
//  Created by Trần Văn Cam on 04/10/2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    // Khai báo biến window: khung nhìn của ứng dụng
    // Ứng dụng này sẽ hiện thị trong window
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        
        // hàm này đươc gọi khi ứng dụng đã được hiển thị
        // Trong hàm này, thường dùng để configure login (FB, Google, Firebase), cấu hình thông báo đẩy
        // Dùng để set màn hình đầu tiên khi vào app
        print("App did launching")
        
        configFirstViewController()
        
        return true
    }
    
    
    func configFirstViewController() {
        
        // set kích thuocws
        //window?.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
        
        // Khởi tạo window và set kich thước bằng kích thước màn hình của thiết bị
        window? = UIWindow(frame: UIScreen.main.bounds)
        
        // Set FirstViewController làm màn hình đầu tiên khi vào app
        // Khởi tạo màn hình sẽ cho hiển đầu tiên khi vào app
        let firstViewController = FirstViewController()
        // Root: gốc
        // Set màn hình đầu tiên là màn hình vừa khởi tạo
        window?.rootViewController = firstViewController // Set firstVC làm màn đầu tiên
        
        window?.makeKeyAndVisible() // hiển thị cửa sổ ứng dụng
        
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Hàm này sẽ được gọi khi ứng dụng sắp thoát khỏi trạng thái active
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Hàm được gọi khi ứng dụng đã bào trạng thái chạy ngầm
        print("App did enter background")
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Hàm được gọi khi ứng dụng sắp vào trạng thía foreground
        print("App will enter foreground")
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Hàm được gọi khi ứng dụng đã vào trạng thái active
        print("App đã vào active")
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        // Hàm được họi khi ứng dụng sắp đong hoàn toàn
        print("Teminate")
    }
    
    
}

