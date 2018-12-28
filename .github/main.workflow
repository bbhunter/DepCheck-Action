workflow "Run Dep-Check" {
  resolves = ["DependencyCheck"]
  on = "push"
}

action "DependencyCheck" {
  uses = "./DepCheck"
}
