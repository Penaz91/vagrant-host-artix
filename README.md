### Artix Linux Host Plugin for Vagrant 2.x

This Ruby Gem enables support for Artix Linux Hosts on Vagrant 2.x.

### Installing

#### Via Vagrant plugin

The plugin is available as a Ruby Gem, thus you should be able to install it using the following command:

```
vagrant plugin install vagrant-host-artix
```

#### From Source

To install the plugin from source you will need to clone the repository:

```
git clone git@github.com:Penaz91/vagrant-host-artix.git
```

Then you will need to build the gem manually:

```
cd vagrant-host-artix
gem build vagrant-host-artix.gemspec
```

After that you can install the plugin:

```
vagrant plugin install vagrant-host-artix-0.0.3.gem
```

### TODOs

- [x] Testing on OpenRC
- [ ] Testing on S6
- [ ] Testing on dinit
- [ ] Testing on runit
- [ ] Automated Testing
