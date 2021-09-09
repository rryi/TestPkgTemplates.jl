using PkgTemplates

t = Template(;
           authors="Robert Rudolph",
           julia=v"1.6.2",
	   dir="C:\\Users\\RR\\julia",
	       plugins=[
               TravisCI(),
               Codecov(),
               AppVeyor(),
               GitHubPages(),
               CirrusCI(),
           ],
       )

print("enter new package name")
pkgName = readline()

generate(t, pkgName)