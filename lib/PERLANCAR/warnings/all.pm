package PERLANCAR::warnings::all;

our $BITS1 = do { require warnings; warnings->import("all"); ${^WARNING_BITS} }; # PRECOMPUTE
our $BITS2 = do { require warnings; warnings->unimport;      ${^WARNING_BITS} }; # PRECOMPUTE

sub import {
    ${^WARNING_BITS} = $BITS1;
}

sub unimport {
    ${^WARNING_BITS} = $BITS2;
}

1;
# ABSTRACT: Turn on warnings (all) with less code

=head1 SYNOPSIS

 use PERLANCAR::warnings::all;

is equivalent to:

 use warnings 'all';

but with less code and startup overhead.


=head1 DESCRIPTION

Just an experimental module (probably silly).

Some notes: the bits depend on the perl used when building the dist.
