use REST::Client;
use JSON;
# Data::Dumper makes it easy to see what the JSON returned actually looks like
# when converted into Perl data structures.
use Data::Dumper;
use MIME::Base64;

sub toList {
   my $data = shift;
   my $key = shift;
   if (ref($data->{$key}) eq 'ARRAY') {
       $data->{$key};
   } elsif (ref($data->{$key}) eq 'HASH') {
       [$data->{$key}];
   } else {
       [];
   }
}

my $headers = {Accept => 'application/json'};
my $client = REST::Client->new();
$client->setHost('http://mantisbt-1.2.11/api/rest');
$client->GET(
    '/mc_version',
    $headers
);

#print Dumper($client);

print Dumper($client->responseCode());

print Dumper($client->responseContent());

my $response = from_json($client->responseContent());

print Dumper($response);
print Dumper($response->{'data'});

#TODO: how to complex list fetch attribute
#my $result = toList($response->{'data'},'reviewData');
#print Dumper($result);
