

 import UIKit

class CollectionViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
  
    
    let enlightenment: [Enlightenment] = [
        Enlightenment(title: "Brain", image: UIImage.init(named: "brain-7351873_1280") ?? UIImage()),
        Enlightenment(title: "Monk", image: UIImage.init(named: "monk-1077839_1280") ?? UIImage()),
        Enlightenment(title: "Buddha", image: UIImage.init(named: "buddha-8661207_1280") ?? UIImage()),
        Enlightenment(title: "Yoga", image: UIImage.init(named: "yoga-1284657_1280") ?? UIImage()),
        Enlightenment(title: "Production Willow", image: UIImage.init(named: "the-main-production-2387257_1280") ?? UIImage()),
        Enlightenment(title: "Woman Magic", image: UIImage.init(named: "woman-954793_1280") ?? UIImage()),
        Enlightenment(title: "Inner Beauty", image: UIImage.init(named: "inner-beauty-3257101_1280") ?? UIImage()),
        Enlightenment(title: "Meditation", image: UIImage.init(named: "meditation-5286678_1280") ?? UIImage()),
        Enlightenment(title: "Idea", image: UIImage.init(named: "idea-1289876_1280") ?? UIImage())
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.reloadData()
    }
}

extension CollectionViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return enlightenment.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "enlightenmentCollectionViewCell", for: indexPath) as! EnlightenmentCollectionViewCell
       // cell.setup(with: enlightenment[indexPath.row])
        cell.imageWidth.constant = collectionView.frame.width/2 - 10
        cell.imageHeight.constant = collectionView.frame.width/2 - 10
        cell.enlightenmentImageView.image = enlightenment[indexPath.row].image
        cell.titlelabel.text = enlightenment[indexPath.row].title
            return cell
        }
    }
    extension CollectionViewController: UICollectionViewDelegateFlowLayout {
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: collectionView.frame.width/2 - 10, height: 100)
        }
    }
    extension CollectionViewController: UICollectionViewDelegate{
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            print(enlightenment[indexPath.row].title)
        }
    }

