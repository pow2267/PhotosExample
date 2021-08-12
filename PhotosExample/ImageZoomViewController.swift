//
//  ImageZoomViewController.swift
//  PhotosExample
//
//  Created by kwon on 2021/08/12.
//

import UIKit
import Photos

class ImageZoomViewController: UIViewController, UIScrollViewDelegate {
    
    var asset: PHAsset!
    let imageManager: PHCachingImageManager = PHCachingImageManager()
    
    @IBOutlet weak var imageView: UIImageView!
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return self.imageView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        imageManager.requestImage(for: self.asset,
                                  targetSize: CGSize(width: self.asset.pixelWidth, height: self.asset.pixelHeight),
                                  contentMode: .aspectFill,
                                  options: nil,
                                  resultHandler: { image, _ in
                                    self.imageView.image = image
        })
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
