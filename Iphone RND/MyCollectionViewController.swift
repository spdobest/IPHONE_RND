import UIKit

class MyCollectionViewController : ViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    
    
    var imageArray = [UIImage]()
    
    
    override func viewDidLoad() {
        collectionMine.dataSource = self
        collectionMine.delegate = self
        imageArray = [#imageLiteral(resourceName: "cupcake.jpg"),#imageLiteral(resourceName: "donunt.jpeg"),#imageLiteral(resourceName: "eclair.jpeg"),#imageLiteral(resourceName: "froyo.jpg"),#imageLiteral(resourceName: "gingerbread.jpg"),#imageLiteral(resourceName: "honeycomb.png"),#imageLiteral(resourceName: "icream_sandwitch.png"),#imageLiteral(resourceName: "jellybean.jpeg"),#imageLiteral(resourceName: "jellybean.jpeg"),#imageLiteral(resourceName: "kitkat.jpg")]
    }
    override func viewWillAppear(_ animated: Bool) {
        
    }
    override func viewWillDisappear(_ animated: Bool) {
        
    }
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return imageArray.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        let cell = collectionMine.dequeueReusableCell(withReuseIdentifier: "customCell", for: indexPath) as! CollectionCell
        
        cell.layer.cornerRadius = 50
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 4
        
       // cell.imageOne.image = imageArray[indexPath.row]
        return (cell)
    }
    
    
    @IBAction func onListClick(_ sender: AnyObject) {
        
    }
    
    @IBAction func onGridClick(_ sender: AnyObject) {
        
    }
}
