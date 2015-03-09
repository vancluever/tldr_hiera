tldr_hiera
============

This is a fully-featured Hiera example that can be executed with `puppet apply`.
The purpose of this project is to teach basic Hiera concepts - and has an
accompanying article on http://vancluevertech.com/, which will be updated after
the initial commit and the article has been written.

What is Hiera?
---------------

Hiera is a hierarchical database that is mainly used with puppet - it allows the
storage of common configuration data to further simplify your puppet setup -
meaning easier recycling of your manifests and modules. Data can be stored in
JSON or YAML, although the latter seems to be the one used more in examples
(and the one used in this one).

You can find more info on Hiera here:
 * https://projects.puppetlabs.com/projects/hiera
 * https://docs.puppetlabs.com/hiera/1/

About hiera-eyaml (encrypted YAML)
-----------------------------------

hiera-eyaml is an excellent encryption add-on, and in fact one of the reasons
that I started exploring Hiera in the first place (ie: to store sensitive data
in puppet that should not be stored in plain text).

More info in how to work with eYAML files can be found in the companion article,
but also you can check out the repo here:
 * https://github.com/TomPoulton/hiera-eyaml

Using this example
-------------------

This project can be run entirely from userspace. Clone, change directories to
to the project directory, and run:

    FACTER_tldrnode=[dataset1|dataset2] puppet apply \
      --hiera_config hiera.yaml --modulepath modules/ \
      -e 'include tldr_hiera'

This will write another Markdown, `tldr_hiera_out.md`, into the
/tmp directory.

Manipulating the passed in facter variable will change the output, demonstrating
simple node configurations, which is pretty much what Hiera is built for:
 * Node data files exist for both `dataset1` and `dataset2`.
 * Any other setting (or omission of the FACTER_tldrnode varible) will cause the
 common values to be written.

Questions? Comments?
--------------------

If you found this example at all useful, feel free to email me at
inbox@vancluevertech.com.

Thanks and enjoy!

--Chris
