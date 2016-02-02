
About this package builder repository
=====================================

This is a package builder repository, which builds several conda recipes and uploads them to a
custom anaconda channel

Working with this channel
=========================

Listing all packages form the conda-forge channel can be achieved by

```
conda search -c janschulz --override-channels
```

Installing a package can be done with:

```
conda install -c janschulz <package-name>
```


You can permanently add the channel by using the following command:

```
conda config --add channels janschulz
```

Once the conda-forge channel has been enabled, packages can be installed with:

```
conda install <package-name>


Terminology
===========

**feedstock** - a repository with a single conda recipe (raw material), supporting scripts and
                CI configuration

**pile** - a repository with multiple recipes in addition to the supporting scripts and CI
           configuration

**conda-smithy** - the tool which helps orchestrate the feedstock or a pile.
                   Its primary use is in the construction of the CI ``.yml`` files
                   and simplify the management of *many* feedstocks.

**conda-forge** - the place where the feedstock and smithy live and work to
                  produce the finished article (built conda distributions)

Updating individual recipes
===========================

If you would like to improve the individual recipes, please take the normal
route of forking this repository and submitting a PR. Upon submission, your changes will
be run on the appropriate platforms to give the reviewer an opportunity to confirm that the
changes result in a successful build. Once merged, the recipe will be re-built and built packages
uploaded automatically to the janschulz channel, whereupon they will be available for
everybody to install and use.
