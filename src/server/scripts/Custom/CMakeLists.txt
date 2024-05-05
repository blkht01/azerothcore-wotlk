```
set(scripts_STAT_SRCS
  ${scripts_STAT_SRCS}
  ${AC_SCRIPTS_DIR}/Custom/spell_on_item_equip.cpp
  ${AC_SCRIPTS_DIR}/Custom/custom_script_loader.cpp
)

AC_ADD_SCRIPT_LOADER("Custom" "custom_script_loader.cpp")

message("  -> Prepared: My custom scripts")
```