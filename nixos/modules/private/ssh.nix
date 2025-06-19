{ ... }: {
  services.openssh = {
    enable = true;
    settings.PasswordAuthentication = false;
  };

  users.users."michael".openssh.authorizedKeys.keys = [
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCxXWgxdlyV3X2UkzGNM7RBOVk3IBdXtsz93rAK7Y4r04jQGWX3f9ZsB8F081EfIQ4wGde7oZZcssNgF0rpJ5PtM9UVcTgwo/OQ8FmMU16RDA2u60XydZYO5Rm7N5Ovpe4NcCmJf5LlXz8eyJmnN18mMPsU7soz7DuPtAnu8qu4YOdVx4yaQOeLIj6IpQqBJOENEImoIfKdMK3p4Q5NIa9saTOI5jWNM534A0pngPi47n3Tc3oZJr5+fOQGknk5Tjxr97lZkifiSb+b4cavKCwPmNaw2vzUHOZT4RJH2OekyXiwYUuFHM0VeW5WEzFyKtwbKZlScMUpjAiLc7oyxLI6j+wPWEt48GsWmNcLgu2ce4lOMcLuAmIixmUvy9thxiPNzwK8PlCHqjD/+2EerOWGmH8sQRZ5dkkc8RbmQbwzd5gb/26+USXq2NHMyZF0BZyEKK4ex1Btpu4v4S6y6iAyov9jS5Xmv2DcIHI4W4ZpNePIvJCyfB5qYEPTA3DJp8BfD+yV4LcZFeuWJCqhSMTms83QdpJ933T/xDy293bwX5W0dH/YHx8rOuRklHo+YSPLfVWz2eHUL5RRsTHR0XwtcYrNLKHE+Qa4mWjbxxKLQ6h0filK/741RNU3S28fyxm991MeSuP8BT3iBdN9+aeaBBYVGJZ9Ut1imWGc7eC09Q== cardno:23_691_247"
  ];
}
