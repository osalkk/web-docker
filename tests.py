import os
import hello
import unittest
import tempfile

class FlaskrTestCase(unittest.TestCase):

    def setUp(self):
        self.db_fd, hello.app.config['DATABASE'] = tempfile.mkstemp()
        hello.app.config['TESTING'] = True
        self.app = hello.app.test_client()
        #hello.init_db()

    def tearDown(self):
        os.close(self.db_fd)
        os.unlink(hello.app.config['DATABASE'])
    
    def test_empty_db(self):
        rv = self.app.get('/')
        assert 'Hello World!' in rv.data

if __name__ == '__main__':
    unittest.main()

