package DateTime::Duration::Patch::StringifyAsISO8601;

# DATE
# VERSION

use strict;
use warnings;

require DateTime::Duration;

package # hide from PAUSE
    DateTime::Duration;

use overload (
    q{""} => 'stringify',
);

sub stringify {
    require DateTime::Format::Duration::ISO8601;
    my $self = shift;
    DateTime::Format::Duration::ISO8601->new->format_duration($self);
}

1;
# ABSTRACT: Make DateTime::Duration objects stringify to ISO8601 duration

=head1 SYNOPSIS

 use DateTime::Duration;
 use DateTime::Duration::Patch::StringifyAsISO8601;

 my $dur = DateTime::Duration->new(years => 1, months => 2);
 say $dur; # => "P1Y2M"


=head1 DESCRIPTION


=head1 SEE ALSO

L<DateTime::Duration>

L<DateTime::Format::Duration::ISO8601>
