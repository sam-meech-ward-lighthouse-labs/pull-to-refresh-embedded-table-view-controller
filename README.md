#  Embedded table view controller for pull to refresh

1. Embed a table view controller inside your view controller using the storyboard.
2. Give the embedded segue and identifier
3. Create a property for the embedded table view controller in the main view controller.
4. Set that property in the prepare for segue method.
5. When you load data in your main view controller, pass that data to the embedded table view controller so it can reload its data.
6. Create a custom delegate in the embedded table view controller to pass data back to the main view controller.
7. Create an action in the table view controller for the pull to refresh and notify the delegate when that happens.

