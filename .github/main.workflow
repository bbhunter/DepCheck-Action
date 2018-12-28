workflow "New workflow" {
  on = "push"
  resolves = ["DependencyCheck"]
}

action "DependencyCheck" {
  uses = "./DepCheck"
}
