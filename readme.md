# riot-md-dropdown

> Material Design dropdown component for [Riot.js](https://github.com/riot/riot).


## Install

```
$ bower install --save riot-md-dropdown
```


## Usage

```html
<md-dropdown label="My Account">
  <md-dropdown-item label="My Profile" href="/profile" />
  <!-- ... -->
  <md-dropdown-item label="Support" onpush="{ doHelp }" />
  <md-dropdown-item label="Logout" onpush="{ doLogout }" />
</md-dropdown>
```


## Options

### md-dropdown

#### label

Type: `string`<br>
Required: `true`<br>

The text to render as the dropdown's trigger label.

### md-dropdown-item

#### href

Type: `string`<br>
Required: `false`<br>
Default: `null`

The URL to open. Unless `href` begins with "http", Riot's [`riot.route`](http://riotjs.com/api/route/#riotrouteto-title-shouldreplace) helper will be used.


#### onpush

Type: `function`<br>
Required: `false`<br>
Default: `null`

Perform an action when pressed. Synonymous with `onclick`.


## License

MIT © [Luke Edwards](https://github.com/lukeed)
