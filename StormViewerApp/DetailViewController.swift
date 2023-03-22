//
//  DetailViewController.swift
//  StormViewerApp
//
//  Created by Catharina Balliego on 06/03/23.
//

import UIKit

class DetailViewController: UIViewController{
    var selectedImage: String?
    var imageView = UIImageView()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = selectedImage
        imageView.translatesAutoresizingMaskIntoConstraints = false
        navigationItem.largeTitleDisplayMode = .never
        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 200)
        imageView.contentMode = .scaleToFill
        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
        view.addSubview(imageView)

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }

}
