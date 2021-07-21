class Category < ActiveHash::Base
    self.data = [
        { id: 1, name: '--' },
        { id: 2, name: 'HTML' },
        { id: 3, name: 'CSS' },
        { id: 4, name: 'Javascript' },
        { id: 5, name: 'jQuery' },
        { id: 6, name: 'Ruby' },
        { id: 7, name: 'Swift' },
        { id: 8, name: 'php' },
        { id: 9, name: 'python' },
        { id: 10, name: 'その他' }
    ]
end