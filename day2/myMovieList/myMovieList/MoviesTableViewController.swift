//
//  MoviesTableViewController.swift
//  MovieList
//
//  Created by JETS Mobile Lab-11 on 5/5/19.
//  Copyright © 2019 Jets. All rights reserved.
//

import UIKit

class MoviesTableViewController: UITableViewController , DelegateProtocole{
    
    let moviesMgr = MovieManager.getInstance()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return moviesMgr.moviesCount
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = moviesMgr[indexPath.row].title
        cell.imageView?.image =  UIImage(named: moviesMgr[indexPath.row].image ?? "avatar.png")
        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if ((sender!) as AnyObject).tag == 1 {
        let movieDetailesView = segue.destination as! ViewController
        let selectedIndex = self.tableView.indexPathForSelectedRow?.row
            movieDetailesView.currentMovie = moviesMgr[selectedIndex!]
        }else{
            let movieAddView = segue.destination as! AddViewController
            movieAddView.prevView = self ;
        }
    }
 
    func addMovie(_ movie: Movie) {
        moviesMgr.addMovie(movie: movie)
        self.tableView!.reloadData()
    }
    
}
