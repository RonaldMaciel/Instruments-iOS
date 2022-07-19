import UIKit

class ViewController: UIViewController {
    
    private let cellSize = (UIScreen.main.bounds.width / 3) - 12
    
    private let colors: [UIColor] = [
        .red, .blue, .green,
        .orange, .cyan, .gray,
        .magenta, .purple, .systemBlue
    ]
    
    private lazy var collection: UICollectionView = {
        var layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: 4, left: 4, bottom: 4, right: 4)
        layout.itemSize = CGSize(width: cellSize, height: cellSize)
        let collection = UICollectionView(frame: view.frame, collectionViewLayout: layout)
        return collection
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollection()
    }

    private func setupCollection() {
        view.addSubview(collection)
        self.collection.delegate = self
        self.collection.dataSource = self
        self.collection.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
    }

}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return colors.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        let title = UILabel()
        title.text = colors.description
        cell.contentView.addSubview(title)
        cell.contentView.backgroundColor = colors.randomElement()
        return cell
    }
}

private class CustomCollectionViewCell: UICollectionViewCell {

}
