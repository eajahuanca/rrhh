<ul class="nav nav-list">
	<li class="">
		<a href="{{ url('/home') }}">
			<i class="menu-icon fa fa-home"></i>
			<span class="menu-text"> Principal </span>
		</a>
		<b class="arrow"></b>
	</li>

	@if(strcmp(Auth::user()->us_tipo,'ADMINISTRADOR')==0)
	<li class="">
		<a href="{{ url('/user') }}">
			<i class="menu-icon fa fa-user"></i>
			<span class="menu-text"> Usuarios</span>
		</a>
		<b class="arrow"></b>
	</li>
	@endif

	<li class="">
		<a href="{{ url('/asis') }}">
			<i class="menu-icon  fa fa-clock-o"></i>
			<span class="menu-text"> Marcaciones</span>
		</a>
		<b class="arrow"></b>
	</li>

	<li class="">
		<a href="{{ url('/permiso') }}">
			<i class="menu-icon  fa fa-suitcase"></i>
			<span class="menu-text"> Permisos</span>
		</a>
		<b class="arrow"></b>
	</li>
</ul>
