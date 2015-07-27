base_type=class()

function base_type:ctor(x)
	print("base_type ctor")
	self.x=x
end

function base_type:print_x()
	print(self.x)
end

function base_type:hello()
	print("hello base_type")
end

test=class(base_type)

function test:ctor()
	print("test ctor")
end

function test:hello()
	print("hello test")
	test.super.print_x(self)
end

a=test.new(1)
--a:print_x()
--a:hello()
print("1")


app:start()

print("2")
