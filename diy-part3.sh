git clone https://github.com/openwrt/packages.git packages_github
cd packages_github && git reset --hard 7aa127e208262e44b81fbbf7fe023b9cfdc6fdf7 && cd ..
rm -rf feeds/packages/lang/golang && cp -r packages_github/lang/golang feeds/packages/lang/
