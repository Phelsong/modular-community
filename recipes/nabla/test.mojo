import nabla


fn main() raises:

    # Simple test to check if nabla is callable, extensive testing is done elsewhere!

    fn foo(args: List[nabla.Array]) raises -> List[nabla.Array]:
        return List(
            nabla.sum(nabla.sin(args[0] * args[1])),
            nabla.sum(nabla.cos(args[0] * args[1])),
        )

    var foo_vmapped = nabla.vmap(foo)
    var foo_d1 = nabla.jacrev(foo_vmapped)
    var foo_d2 = nabla.jacfwd(foo_d1)
    var foo_d3 = nabla.jacfwd(foo_d2)

    var args = List(nabla.arange((2, 3)), nabla.arange((2, 3)))

    var res = foo(args)
    print("foo checksum: ", nabla.sum(res[0]))  # , nabla.sum(res[1]))

    var d1 = foo_d1(args)
    print(
        "foo_d1 checksum: ", nabla.sum(d1[0])
    )  # , nabla.sum(d1[1]), nabla.sum(d1[2]), nabla.sum(d1[3]))

    var d2 = foo_d2(args)
    print(
        "foo_d2 checksum: ", nabla.sum(d2[0])
    )  # , nabla.sum(d2[1]), nabla.sum(d2[2]), nabla.sum(d2[3]), nabla.sum(d2[4]), nabla.sum(d2[5]), nabla.sum(d2[6]), nabla.sum(d2[7]))

    var d3 = foo_d3(args)
    print(
        "foo_d3 checksum: ", nabla.sum(d3[0])
    )  # , nabla.sum(d3[1]), nabla.sum(d3[2]), nabla.sum(d3[3]), nabla.sum(d3[4]), nabla.sum(d3[5]), nabla.sum(d3[6]), nabla.sum(d3[7]), nabla.sum(d3[8]), nabla.sum(d3[9]), nabla.sum(d3[10]), nabla.sum(d3[11]), nabla.sum(d3[12]), nabla.sum(d3[13]), nabla.sum(d3[14]), nabla.sum(d3[15]))