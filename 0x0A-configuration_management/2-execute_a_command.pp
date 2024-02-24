# create a process names killmenow

exec { 'pkill killmenow' :
  path => '/bin/',
  command => 'pkill -f killmenow',
}
