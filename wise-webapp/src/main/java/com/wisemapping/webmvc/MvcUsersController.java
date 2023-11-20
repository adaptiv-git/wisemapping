/*
 *    Copyright [2022] [wisemapping]
 *
 *   Licensed under WiseMapping Public License, Version 1.0 (the "License").
 *   It is basically the Apache License, Version 2.0 (the "License") plus the
 *   "powered by wisemapping" text requirement on every single page;
 *   you may not use this file except in compliance with the License.
 *   You may obtain a copy of the license at
 *
 *       http://www.wisemapping.org/license
 *
 *   Unless required by applicable law or agreed to in writing, software
 *   distributed under the License is distributed on an "AS IS" BASIS,
 *   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *   See the License for the specific language governing permissions and
 *   limitations under the License.
 */

package com.wisemapping.webmvc;


import com.wisemapping.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MvcUsersController {

    @Qualifier("userService")
    @Autowired
    private UserService userService;

    @RequestMapping(value = "forgot-password", method = RequestMethod.GET)
    @PreAuthorize("permitAll()")
    public ModelAndView showResetPasswordPage() {
        return new ModelAndView("reactInclude");
    }

    @RequestMapping(value = "registration-google", method = RequestMethod.GET)
    @PreAuthorize("permitAll()")
    public ModelAndView processGoogleCallback() {
        return new ModelAndView("reactInclude");
    }

    @RequestMapping(value = "registration", method = RequestMethod.GET)
    @PreAuthorize("permitAll()")
    public ModelAndView showRegistrationPage() {
        return new ModelAndView("reactInclude");
    }

    @RequestMapping(value = "registration-success", method = RequestMethod.GET)
    @PreAuthorize("permitAll()")
    public ModelAndView showRegistrationSuccess() {
        return new ModelAndView("reactInclude");
    }

    @RequestMapping(value = "forgot-password-success", method = RequestMethod.GET)
    @PreAuthorize("permitAll()")
    public ModelAndView showResetPasswordSuccess() {
        return new ModelAndView("reactInclude");
    }
}

