package WebService::LiveJournal::RPC;

use strict;
use warnings;
use Exporter;
use RPC::XML;
use RPC::XML::ParserFactory;
use RPC::XML::Client;
our @ISA = qw/ Exporter /;
our @EXPORT_OK = qw/ xml2hashref xml2hash /;

# ABSTRACT: RPC utilities for WebService::LiveJournal
# VERSION

my $parser = new RPC::XML::ParserFactory;

sub xml2hashref
{
  my $xml = shift;
  my $response = $parser->parse($xml);
  my $struct = $response->value;
  my $hash = $struct->value;
}

sub xml2hash { %{ xml2hashref(@_) } }

1;

=head1 SEE ALSO

L<WebService::LiveJournal>

=cut
