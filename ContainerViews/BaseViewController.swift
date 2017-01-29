import UIKit
class BaseViewController: UIViewController {
    var scoreVC:ScoreViewController?
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let baseTabBarVC = segue.destination as? UITabBarController {
            if let firstTab = baseTabBarVC.viewControllers?.first as? StartupQuizViewController {
                firstTab.delegate = self
            }
            if let secondTab = baseTabBarVC.viewControllers?[1] as? ScienceQuizViewController {
                secondTab.delegate = self
            }
        }
        if let vc = segue.destination as? ScoreViewController {
            scoreVC = vc
        }
    }
}

extension BaseViewController: ScoreDelegate {
    func addOneToScore() {
        print("score to be updated")
        scoreVC?.updateScore()
    }
}
