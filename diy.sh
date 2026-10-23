# 请在下方输入自定义命令(一般用来安装第三方插件)(可以留空)
# Please enter the custom command below (usually used to install third-party plugins) (can be left blank)
# git clone --depth=1 https://github.com/EOYOHOO/UA2F.git package/UA2F
# git clone --depth=1 https://github.com/EOYOHOO/rkp-ipid.git package/rkp-ipid
# ===== 前置：优先从 PassWall2 新官方仓库拉取（feeds update 之前）=====
sed -i '/passwall/d' feeds.conf.default 2>/dev/null || true
sed -i '1i src-git passwall_packages https://github.com/Openwrt-Passwall/openwrt-passwall-packages.git;main' feeds.conf.default
sed -i '2i src-git passwall2 https://github.com/Openwrt-Passwall/openwrt-passwall2.git;main' feeds.conf.default

# ===== 后置：清理 geoview 冲突（feeds update 之后，feeds install 之前）=====
#rm -rf feeds/packages/net/geoview
