import unittest
from numbers import Number


class TestStringMethods(object):
    pass


class TeststringMethods(unittest.TestCase):
    
    def test_upper(self):
        self.assertEqual('foo'.upper(),'FOO')
        def test_isNumber(self):
                self.assertEqual('123',Number(),'123')
        
    def test_isUpper(self):
            self.assertTrue('FOO', self.test_isUpper())
            self.assertFalse('Foo'.isupper())

            
    def test_split(self):
                s='hello world'
                self.assertEqual(s.split(),['hello','world'])
                with self.assertRaises(TypeError):
                    s.split(2)

                    suite = unittest.TestLoader().loadTestsFromTestCase(TestStringMethods)
                    unittest.TextTestRunner(verbosity=2).run(suite)
