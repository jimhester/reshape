library("devtools")

with_libpaths(getOption("devtools.revdep.libpath"), {
  install.packages("spatstat")
  install.packages("rgdal", type = "source")
})

res <- revdep_check()
revdep_check_save_summary(res)
revdep_check_save_logs(res)
