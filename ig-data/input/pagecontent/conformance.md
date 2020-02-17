Describe how conformance to this IG can be claimed and should be assessed.

Thoughts on this topic:

Conformity assessment should be readily reproducible across different assessors.  It should be measurable against each requirement, as well as groups of requirements in a functional area.  Some IETF specifications (known as Requests for Comments or RFC) have distinguished between conforming (implements all SHALL requirements) and fully conforming (implements all SHALL and SHOULD requirements).  The distinction is useful, but the terminology used is subtle and may not be easily understood for users not familiar with this usage (it shows up in a few commonly used RFCs, but is not common, and the distinction would lost on those not familiar with standards conformity assessment in general).

A more user friendly rating system might be on an ordinal scale of 1 to 5, where 0 stars is fully non-conforming, 3 stars meets all required criteria, 4 meets all required criteria and some degree of additional recommended criteria, and 5 stars meets all required criteria, and a larger degree of recommended criteria.

For example:

0 star: The device or system under test (SUT) does not meet any SHALL or SHOULD criteria.

1 star: The SUT meets some (but not most) of the SHALL criteria.

2 stars: The SUT meets most of the SHALL criteria.

3 stars: The SUT meets all of the SHALL criteria.

4 stars: The SUT meets all of the SHALL criteria, and some (but not most) of the SHOULD criteria.

5 stars: The SUT meets all of the SHALL criteria and most or all of the SHOULD criteria.

