execute "touch_something" do
    command "mkdir -p /tmp/cltest; touch /tmp/cltest/`dd if=/dev/random bs=32 count=1 2>/dev/null | md5sum | head -c 12`"
end

