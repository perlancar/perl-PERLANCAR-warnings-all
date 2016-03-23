package PERLANCAR::warnings::all;

our $BITS1; # PRECOMPUTE: require warnings; warnings->import("all"); ${^WARNING_BITS}
our $BITS2; # PRECOMPUTE: require warnings; warnings->unimport;      ${^WARNING_BITS}

sub import {
    ${^WARNING_BITS} = $BITS1;
}

sub unimport {
    ${^WARNING_BITS} = $BITS2;
}

1;
# ABSTRACT: Turn on warnings (all)

=head1 DESCRIPTION

Just an experimental module.

Some notes: the bits depend on the perl used when building the dist.
