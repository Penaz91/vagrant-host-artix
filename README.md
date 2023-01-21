### Artix Linux Host Plugin for Vagrant 2.x

This Ruby Gem enables support for Artix Linux Hosts on Vagrant 2.x.

### Installing

Currently installation can only be done from source, thus you will need to clone the repository:

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
vagrant plugin install vagrant-host-artix-0.0.1.gem
```

### Known Issues

Some Artix systems may be migrated from Arch Linux. These systems will be detected by the builtin Arch host plugin, due to the presence of the `/etc/arch-release` file. Until this issue isn't fixed upstream, it's suggested to rename or delete such file.

### TODOs

- [x] Testing on OpenRC
- [ ] Testing on S6
- [ ] Testing on dinit
- [ ] Testing on runit
- [ ] Automated Testing
