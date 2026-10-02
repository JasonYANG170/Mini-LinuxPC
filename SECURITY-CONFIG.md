# 凭据配置 / Credential configuration

通过私有编译配置提供 TUYA_FFS_PRIVATE_KEY_1/2/3，并在设备端配置自己的 Tuya UUID/auth_key；不要提交凭据及含凭据的固件镜像。

Provide TUYA_FFS_PRIVATE_KEY_1, TUYA_FFS_PRIVATE_KEY_2, and TUYA_FFS_PRIVATE_KEY_3 through private build configuration. Provision your own Tuya UUID/auth_key in the device configuration. Do not commit generated credentials or packed firmware containing them.

已公开的真实凭据仍须撤销或更换。历史重写不能清除其他人的克隆、Fork 或 GitHub 缓存。

Revoke or rotate real credentials that were exposed. Rewriting history does not remove other clones, forks, or GitHub caches.
