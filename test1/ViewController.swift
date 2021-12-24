import UIKit
import SnapKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var names: [String] = ["Айбек","Айдай","Бегимай","Бектур","Гуля","Сезим","Санжар","Эрлан","Айдар", "Нуржан", "Саадат", "Меерим"]
    var namesTableView = UITableView()
    var namesCell = UITableViewCell()
    
    
    struct Cells {
        static let namesCell = "NamesCell"
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        30
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return names.count
        }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = namesTableView.dequeueReusableCell(withIdentifier: Cells.namesCell) as! NamesCell
        let model = names[indexPath.row]
        
        cell.namesTitle.text = model

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        return
    }
    
    override func viewDidLoad() {
       
        view.addSubview(namesTableView)
        namesTableView.delegate = self
        namesTableView.dataSource = self
        namesTableView.snp.makeConstraints{make in
            make.center.equalToSuperview()
            make.height.equalToSuperview()
            make.width.equalToSuperview()
        }
        
        namesTableView.register(NamesCell.self, forCellReuseIdentifier: Cells.namesCell)
        
        
    }
}
