<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--  ==========  -->
<!--  = Modal Windows =  -->
<!--  ==========  -->

<!--  = Login =  -->
<div id="loginModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="loginModalLabel" aria-hidden="true">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h3 id="loginModalLabel"><span class="light">Login</span> To Webmarket</h3>
    </div>
    <div class="modal-body">
        <form method="post" action="user/login-process" />
            <div class="control-group">
                <label class="control-label hidden shown-ie8" for="inputEmail">E-mail</label>
                <div class="controls">
                    <input type="text" class="input-block-level" id="inputEmail" placeholder="E-mail" name="email"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label hidden shown-ie8" for="inputPassword">Password</label>
                <div class="controls">
                    <input type="password" class="input-block-level" id="inputPassword" placeholder="Password" name="password"/>
                </div>
            </div>
            <div class="control-group">
                <div class="controls">
                    <label class="checkbox">
                        <input type="checkbox" name="remember"/>
                        Remember me 
                    </label>
                </div>
            </div>
            <button type="submit" class="btn btn-primary input-block-level bold higher">
                SIGN IN
            </button>
        </form>
        <p class="center-align push-down-0">
            <a href="#" data-dismiss="modal">Forgot your password?</a>
        </p>
    </div>
</div>

<!--  = Register =  -->
<div id="registerModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="registerModalLabel" aria-hidden="true">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h3 id="registerModalLabel"><span class="light">Register</span> To Webmarket</h3>
    </div>
    <div class="modal-body">
        <form method="post" action="#" />
            <div class="control-group">
                <label class="control-label hidden shown-ie8" for="inputUsernameRegister">Username</label>
                <div class="controls">
                    <input type="text" class="input-block-level" id="inputUsernameRegister" placeholder="Username" />
                </div>
            </div>
            <div class="control-group">
                <label class="control-label hidden shown-ie8" for="inputEmailRegister">Email</label>
                <div class="controls">
                    <input type="email" class="input-block-level" id="inputEmailRegister" placeholder="Email" />
                </div>
            </div>
            <div class="control-group">
                <label class="control-label hidden shown-ie8" for="inputPasswordRegister">Password</label>
                <div class="controls">
                    <input type="password" class="input-block-level" id="inputPasswordRegister" placeholder="Password" />
                </div>
            </div>
            <button type="submit" class="btn btn-danger input-block-level bold higher">
                REGISTER
            </button>
        </form>
        <p class="center-align push-down-0">
            <a data-toggle="modal" role="button" href="#loginModal" data-dismiss="modal">Already Registered?</a>
        </p>
        
    </div>
</div>