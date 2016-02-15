#!/usr/bin/env python


import testtools

from mock import MagicMock

import skeleton


class MmpfTestCase(testtools.TestCase):

    def test_foo(self):
        self.assertEquals('foo' * 2, skeleton.foo())

    def test_bar(self):
        self.assertEquals('bar' * 2, skeleton.bar())

    def test_main(self):
        skeleton.foo = MagicMock()
        skeleton.foo.return_value = None
        self.assertEquals(None, skeleton.main())
        skeleton.foo.assert_called_once_with()
