<md-dropdown-item>
	<a class="md-dropdown__item" onclick="{ onClick }">{ opts.label }</a>

	<script>
		var self = this;

		self.onClick = function (e) {
			if (e.target.disabled) return;

			if (opts.href) {
				/^http/i.test(opts.href) ? (window.location.href = opts.href) : riot.route(opts.href);
			}

			opts.onpush && opts.onpush(e);

			self.parent.doClose();
		};
	</script>
</md-dropdown-item>

<md-dropdown>
	<div class="md-dropdown {md-dropdown--open: isOpen}">
		<label class="md-dropdown__label" onclick="{ doToggle }">
			{ opts.label } <md-icon type="arrow_drop_down" />
		</label>

		<div class="md-dropdown__menu shadow--3">
			<yield />
		</div>
	</div>

	<script>
		var self = this;

		self.isOpen = false;

		self.doToggle = function (e) {
			return self.isOpen ? self.doClose() : self.doOpen();
		};

		self.doOpen = function () {
			if (!self.isMounted) return;
			self.isOpen = true;
			self.update();
		};

		self.doClose = function () {
			if (!self.isMounted) return;
			self.isOpen = false;
			self.update();
		}
	</script>
</md-dropdown>
